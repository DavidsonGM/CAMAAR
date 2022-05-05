import LoginPage from '../pages/LoginPage.vue'
import HomePage from  '../pages/HomePage.vue'
import TeacherQuestionaryPage from '../pages/TeacherQuestionaryPage.vue'
const routes = [
  {
    path: '/',
    name: 'Login',
    component: LoginPage,
  },
  {
    path: '/home',
    name: 'Home',
    component: HomePage,
  },
  {
    path: '/teacher/questionary',
    name: 'Teacher Questionary',
    component: TeacherQuestionaryPage,
  },

  // Always leave this as last one,
  // but you can also remove it
  {
    path: '/:catchAll(.*)*',
    component: () => import('pages/ErrorNotFound.vue')
  }
]

export default routes
