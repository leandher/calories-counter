import { Response, Request, Router } from 'express'
import { FoodService } from './../services/food.service'

const foodRouter = Router()

const foodService: FoodService = new FoodService()

foodRouter.get('/', async (req: Request, res: Response): Promise<Response> => {
  try {
    const { rows, offset, keyword } = req.query

    const foods = await foodService.findAll(rows?.toString(), offset?.toString(), keyword?.toString())

    return res.json(foods)
  } catch (error) {
    return res.status(500).send(error)
  }
}
)

export default foodRouter
