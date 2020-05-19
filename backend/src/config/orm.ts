import { ConnectionOptions } from 'typeorm'

const config = {
  type: 'postgres',
  host: process.env.TYPEORM_HOST,
  port: parseInt(process.env.TYPEORM_PORT),
  username: process.env.TYPEORM_USERNAME,
  password: process.env.TYPEORM_PASSWORD,
  database: process.env.TYPEORM_DATABASE,
  logging: true,
  entities: [
    'src/db/models/*.entity.ts'
  ],
  migrations: [
    'src/db/migrations/*.ts'
  ]
} as ConnectionOptions

module.exports = config
