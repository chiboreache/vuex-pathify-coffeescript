import { make } from 'vuex-pathify'


export state = ->
  value: 0

export mutations =
  {
    # create SET_VALUE automatically
    ...make.mutations(state)
    # add manual mutation
    INCREMENT: (state) ->
      state.value++
  }

export default
  {
    namespaced: true
    state
    mutations
  }
