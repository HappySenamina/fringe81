package models

import play.api.db._


case class Topic(id: Int, topic: String) {

  def addData {
    DB.withConnection { implicit c =>
      val id: Int = SQL("insert into topic (topic, id) values ({topic}, {id})").
        on('id->this.id, 'topic -> this.topic
          ).executeUpdate()
    }
  }
}

object Topic {
  val top = {
      get [Int]("id") map {
        case id =>
          topic(id)
      }
      get[String]("topic") map {
      case topic =>
        topic(topic)
    }
  }

  def getAll: List[Mydata] = {
    DB.withConnection { implicit c =>
      val datas = SQL("Select * from topic").
        as(Topic.data *)
      return datas
    }
  }
}
/*
case class TopicForm(topic : String, id: Int) {

  def getMydata:Topic = {
    return Topic(null, this.topic, this.id)
  }
}*/
