import { Router } from 'express'
import foodRouter from './food.routes'

const routes = Router()

routes.get('/', (req, res) => res.send('Server built with Typescript + Node'))

routes.use('/api/foods', foodRouter)

export default routes
