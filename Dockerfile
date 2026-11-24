FROM node:24-alpine AS runner
WORKDIR /app

ENV NODE_ENV=production
ENV PORT=3000
ENV HOSTNAME="0.0.0.0"
ENV NEXT_TELEMETRY_DISABLED=1

# Don't run as root
RUN addgroup --system --gid 1001 nodejs && \
    adduser --system --uid 1001 nextjs

# Copy standalone build assets
COPY --chown=nextjs:nodejs package.json ./
COPY --chown=nextjs:nodejs server.js ./
COPY --chown=nextjs:nodejs public ./public
COPY --chown=nextjs:nodejs .next ./.next

# Install minimal production dependencies
RUN npm install --omit=dev --no-audit --no-fund @libsql/client undici

USER nextjs

EXPOSE 3000

CMD ["node", "server.js"]
