import express from 'express'
import cors from 'cors'
import { createConnection, ConnectionOptions } from 'typeorm'

import routes from './routes'
import * as orm from './config/orm'

class App {
  public express: express.Application

  public constructor () {
    this.express = express()
    this.middlewares()
    this.routes()
    this.database()
  }

  private middlewares (): void {
    this.express.use(express.json())
    this.express.use(cors())
  }

  private routes (): void {
    this.express.use(routes)
  }

  private database (): void {
    createConnection(orm as ConnectionOptions)
  }
}

export default new App().express
