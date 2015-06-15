class YogasController < ApplicationController

def index
    @yogas = Yoga.all
end
end
