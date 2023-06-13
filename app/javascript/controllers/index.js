// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import CalendarController from "./calendar_controller"
application.register("calendar", CalendarController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import InsertInListController from "./insert_in_list_controller"
application.register("insert-in-list", InsertInListController)

import InsertSubcommentInListController from "./insert_subcomment_in_list_controller"
application.register("insert-subcomment-in-list", InsertSubcommentInListController)

import ReplySubcommentController from "./reply_subcomment_controller"
application.register("reply-subcomment", ReplySubcommentController)

import ToyimageController from "./toyimage_controller"
application.register("toyimage", ToyimageController)
