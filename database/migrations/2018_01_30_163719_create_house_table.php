<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHouseTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('house', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title')->comment('标题');
            $table->string('subTitle')->nullable()->comment('子标题');
            $table->string('cover')->nullable()->comment('封面图');
            $table->string('region')->nullable()->comment('区域');
            $table->string('area')->nullable()->comment('面积');
            $table->string('unitPrice')->nullable()->comment('单价');
            $table->string('price')->nullable()->comment('总价');
            $table->string('roomCount')->nullable()->comment('几室几厅');
            $table->string('direction')->nullable()->comment('朝向');
            $table->string('community')->nullable()->comment('隶属小区');
            $table->string('floor')->nullable()->comment('楼层');
            $table->string('floors')->nullable()->comment('最大楼层');
            $table->string('houseType')->nullable()->comment('房屋类型');
            $table->string('contact')->nullable()->comment('联系人');
            $table->string('tel')->nullable()->comment('联系电话');
            $table->string('decoration')->nullable()->comment('装修状态');
            $table->string('floorAge')->nullable()->comment('楼龄');
            $table->string('houseAgeLimit')->nullable()->comment('产权年限');
            $table->string('supplyHeating')->nullable()->comment('供暖');
            $table->string('elevator')->nullable()->comment('电梯');
            $table->longText('communityInfo')->nullable()->comment('小区信息');
            $table->longText('surroundings')->nullable()->comment('周边信息');
            $table->longText('traffic')->nullable()->comment('交通信息');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('house');
    }
}
