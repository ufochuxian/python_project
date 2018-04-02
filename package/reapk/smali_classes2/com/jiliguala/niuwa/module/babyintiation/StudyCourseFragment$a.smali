.class Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

.field private b:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 757
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private a()I
    .locals 6

    .prologue
    .line 1010
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$1600(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 1011
    .local v0, "dotX":I
    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    sub-int v1, v0, v2

    .line 1012
    .local v1, "top":I
    return v1
.end method

.method private a(F)I
    .locals 3
    .param p1, "percent"    # F

    .prologue
    .line 1017
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$1600(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v0, v2

    .line 1018
    .local v0, "dotX":I
    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    sub-int v1, v0, v2

    .line 1019
    .local v1, "left":I
    return v1
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    const v2, 0x7f080368

    .line 943
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    const/4 v0, 0x0

    .line 954
    :goto_0
    return-object v0

    .line 946
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 954
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 946
    :sswitch_0
    const-string v1, "current"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "locked"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "completed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    .line 948
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080367

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 950
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 952
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080369

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 946
    :sswitch_data_0
    .sparse-switch
        -0x539f09b5 -> :sswitch_2
        -0x4169ccf6 -> :sswitch_1
        0x432bbd79 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;)Ljava/lang/String;
    .locals 3
    .param p1, "lesson"    # Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;

    .prologue
    .line 903
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->pic:Ljava/lang/String;

    .line 904
    .local v0, "picUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->isUnPay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_rmb.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    :cond_0
    :goto_0
    return-object v0

    .line 906
    :cond_1
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_lock.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 908
    :cond_2
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;)Ljava/lang/String;
    .locals 3
    .param p1, "unit"    # Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    .prologue
    .line 991
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->icon:Ljava/lang/String;

    .line 992
    .local v0, "iconUrl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->status:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private a(ILcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;

    .prologue
    .line 935
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->b:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->units:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 940
    :goto_0
    return-void

    .line 938
    :cond_0
    iget-object v0, p2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->f:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v8, 0x7f010020

    const v7, 0x7f01001f

    .line 1023
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1024
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1025
    .local v3, "position":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->b:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->units:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    .line 1026
    .local v4, "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    if-eqz v4, :cond_0

    .line 1027
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1028
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "UNIT_OBJ"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1029
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .line 1030
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 1029
    invoke-static {v5, v6, v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1032
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v2

    .line 1033
    .local v2, "ft":Landroid/support/v4/app/an;
    invoke-virtual {v2, v7, v8, v7, v8}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 1037
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1038
    const v5, 0x7f090481

    sget-object v6, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v5, v1, v6}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 1039
    sget-object v5, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 1043
    :goto_0
    invoke-virtual {v2}, Landroid/support/v4/app/an;->i()I

    .line 1046
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "ft":Landroid/support/v4/app/an;
    .end local v3    # "position":I
    .end local v4    # "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    :cond_0
    return-void

    .line 1041
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v2    # "ft":Landroid/support/v4/app/an;
    .restart local v3    # "position":I
    .restart local v4    # "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    :cond_1
    invoke-virtual {v2, v1}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;)V
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "holder"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 971
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 972
    .local v0, "converviewParams":Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_0

    .line 973
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .end local v0    # "converviewParams":Landroid/widget/AbsListView$LayoutParams;
    invoke-direct {v0, v4, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 975
    .restart local v0    # "converviewParams":Landroid/widget/AbsListView$LayoutParams;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$1400(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v2

    iput v2, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 976
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$1500(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v2

    iput v2, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 977
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 980
    :cond_0
    iget-object v2, p2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 981
    .local v1, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v1, :cond_1

    .line 982
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 984
    .restart local v1    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$1400(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 985
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$1500(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 986
    iget-object v2, p2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 988
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->b(Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/lang/Float;Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;)V
    .locals 2
    .param p1, "percent"    # Ljava/lang/Float;
    .param p2, "holder"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;

    .prologue
    const/4 v1, -0x2

    .line 915
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 917
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 919
    iget-object v1, p2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 920
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "urlSuffix"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/c;
    .param p4, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 923
    if-nez p4, :cond_1

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    invoke-virtual {p4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 928
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 929
    .local v0, "urlToLoad":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v1

    invoke-virtual {v1, v0, p4, p3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 930
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 928
    .end local v0    # "urlToLoad":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 996
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1004
    const-string v0, ""

    :goto_1
    return-object v0

    .line 996
    :sswitch_0
    const-string v1, "current"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "locked"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "completed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 998
    :pswitch_0
    const-string v0, ".png"

    goto :goto_1

    .line 1000
    :pswitch_1
    const-string v0, "_lock.png"

    goto :goto_1

    .line 1002
    :pswitch_2
    const-string v0, "_comp.png"

    goto :goto_1

    .line 996
    nop

    :sswitch_data_0
    .sparse-switch
        -0x539f09b5 -> :sswitch_2
        -0x4169ccf6 -> :sswitch_1
        0x432bbd79 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(ILcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;

    .prologue
    const/4 v1, -0x2

    .line 959
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 962
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$1300(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)[F

    move-result-object v1

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 966
    iget-object v1, p2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 968
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 6
    .param p1, "storyIconView"    # Landroid/view/View;

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x1

    .line 1049
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1050
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->b:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->b:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->hasLesson()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1051
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;

    .line 1052
    .local v1, "lesson":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->isUnPay()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1054
    iget-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->_id:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->c(Ljava/lang/String;)V

    .line 1055
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1057
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "KEY_SHOW_SUSPENSION_"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1058
    const-string v2, "SHARE_TYPE"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1059
    const-string v2, "SHARE_THUMB"

    const-string v3, "http://qiniu.jiliguala.com//wml/storylesson/icon/thumb.png"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1060
    const-string v2, "key_url"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->burl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->startActivity(Landroid/content/Intent;)V

    .line 1082
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "lesson":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;
    :cond_0
    :goto_0
    return-void

    .line 1062
    .restart local v1    # "lesson":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;
    :cond_1
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1064
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/story/QualityStoryUnLockedActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1065
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "COURSE_ID"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->_id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    const-string v2, "title"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->ttl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1067
    const-string v2, "STORY_LESSON_URL"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->surl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    const-string v2, "STORY_LESSON_TARGET"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->tgt:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1070
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1072
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1073
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "KEY_SHOW_SUSPENSION_"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1074
    const-string v2, "SHARE_TYPE"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1075
    const-string v2, "SHARE_THUMB"

    const-string v3, "http://qiniu.jiliguala.com//wml/storylesson/icon/thumb.png"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    const-string v2, "key_url"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->surl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a(Landroid/view/View;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .param p1, "lessonId"    # Ljava/lang/String;

    .prologue
    .line 1086
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1087
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    const-string v2, "story"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Item Purchase View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1089
    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;)V
    .locals 0
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->b:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    .line 763
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->notifyDataSetChanged()V

    .line 764
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->b:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->b:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->units:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 769
    :cond_0
    const/4 v0, 0x0

    .line 771
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->b:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->units:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 777
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 782
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 789
    if-nez p2, :cond_4

    .line 790
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b00fd

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 791
    new-instance v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;-><init>()V

    .line 793
    .local v2, "holder":Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;
    const v9, 0x7f090278

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iput-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->a:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    .line 794
    const v9, 0x7f090158

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->c:Landroid/widget/RelativeLayout;

    .line 795
    const v9, 0x7f0900a3

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->e:Landroid/widget/ImageView;

    .line 797
    const v9, 0x7f0905d4

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->g:Landroid/widget/TextView;

    .line 798
    const v9, 0x7f0905ce

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->h:Landroid/widget/TextView;

    .line 800
    const v9, 0x7f090158

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->c:Landroid/widget/RelativeLayout;

    .line 802
    const v9, 0x7f090530

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->d:Landroid/widget/RelativeLayout;

    .line 803
    const v9, 0x7f090533

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->b:Landroid/widget/ImageView;

    .line 805
    const v9, 0x7f0901b3

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->f:Landroid/widget/RelativeLayout;

    .line 807
    iget-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->f:Landroid/widget/RelativeLayout;

    const v10, 0x7f0901b5

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->i:Landroid/widget/ImageView;

    .line 809
    iget-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->f:Landroid/widget/RelativeLayout;

    const v10, 0x7f0901b8

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->j:Landroid/widget/TextView;

    .line 811
    iget-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->f:Landroid/widget/RelativeLayout;

    const v10, 0x7f0901b4

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->k:Landroid/widget/TextView;

    .line 813
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 819
    :goto_0
    invoke-direct {p0, p2, v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a(Landroid/view/View;Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;)V

    .line 821
    invoke-direct {p0, p1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->b(ILcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;)V

    .line 824
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->b:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->b:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->hasLesson()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 825
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v9}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$900(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)Ljava/util/Map;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 826
    .local v4, "percent":Ljava/lang/Float;
    if-eqz v4, :cond_5

    .line 827
    iget-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->d:Landroid/widget/RelativeLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 828
    invoke-direct {p0, v4, v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a(Ljava/lang/Float;Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;)V

    .line 829
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->b:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    iget-object v10, v9, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->lessons:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v9}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$1000(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)Ljava/util/Map;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;

    .line 830
    .local v3, "lesson":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;->hasIcon()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 831
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v9

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v12

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 833
    :cond_0
    iget-object v5, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->b:Landroid/widget/ImageView;

    .line 834
    .local v5, "storyIconView":Landroid/view/View;
    iget-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 835
    iget-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->d:Landroid/widget/RelativeLayout;

    new-instance v10, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a$1;

    invoke-direct {v10, p0, v5}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a$1;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;Landroid/view/View;)V

    invoke-static {v9, v10}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    .line 850
    .end local v3    # "lesson":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Lesson;
    .end local v4    # "percent":Ljava/lang/Float;
    .end local v5    # "storyIconView":Landroid/view/View;
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a(ILcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;)V

    .line 852
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->b:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->units:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    .line 854
    .local v6, "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    iget-object v9, v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    if-eqz v9, :cond_1

    .line 855
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v9, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$302(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;I)I

    .line 858
    :cond_1
    iget-object v9, v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    if-eqz v9, :cond_2

    .line 859
    iget-object v9, v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    iget v9, v9, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;->index:I

    add-int/lit8 v0, v9, 0x1

    .line 860
    .local v0, "day":I
    iget-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->j:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Day "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    iget-object v9, v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;->status:Ljava/lang/String;

    const-string v10, "available"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    const-string v1, "\u5f00\u8bfe\u54af\uff01"

    .line 862
    .local v1, "desc":Ljava/lang/String;
    :goto_2
    iget-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->k:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    .end local v0    # "day":I
    .end local v1    # "desc":Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drawable://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->getInstance()Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->getResIdByIndex(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 866
    .local v7, "url":Ljava/lang/String;
    const-string v9, ""

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v10

    iget-object v11, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->e:Landroid/widget/ImageView;

    invoke-direct {p0, v7, v9, v10, v11}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c;Landroid/widget/ImageView;)V

    .line 868
    invoke-direct {p0, v6}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "?imageMogr2/thumbnail/160x"

    .line 870
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v11

    iget-object v12, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->a:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    .line 868
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c;Landroid/widget/ImageView;)V

    .line 873
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/login/a;->S()Ljava/lang/String;

    move-result-object v9

    const-string v10, "?imageMogr2/thumbnail/100x"

    .line 875
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jiliguala/niuwa/logic/e/a;->g()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v11

    iget-object v12, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->i:Landroid/widget/ImageView;

    .line 873
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c;Landroid/widget/ImageView;)V

    .line 878
    iget-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->a:Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    iget-object v10, v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->status:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 880
    iget-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->g:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unit "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->unit:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    iget-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->h:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->ctitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->c:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 885
    iget-object v8, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->c:Landroid/widget/RelativeLayout;

    .line 886
    .local v8, "viewClick":Landroid/view/View;
    iget-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->c:Landroid/widget/RelativeLayout;

    new-instance v10, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a$2;

    invoke-direct {v10, p0, v8}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a$2;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;Landroid/view/View;)V

    invoke-static {v9, v10}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    .line 893
    iget-object v9, v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    if-nez v9, :cond_3

    iget-object v9, v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->status:Ljava/lang/String;

    const-string v10, "completed"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 894
    :cond_3
    iget-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->c:Landroid/widget/RelativeLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 899
    :goto_3
    return-object p2

    .line 815
    .end local v2    # "holder":Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;
    .end local v6    # "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "viewClick":Landroid/view/View;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;

    .restart local v2    # "holder":Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;
    goto/16 :goto_0

    .line 843
    .restart local v4    # "percent":Ljava/lang/Float;
    :cond_5
    iget-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->d:Landroid/widget/RelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 846
    .end local v4    # "percent":Ljava/lang/Float;
    :cond_6
    iget-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->d:Landroid/widget/RelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 861
    .restart local v0    # "day":I
    .restart local v6    # "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    :cond_7
    const-string v1, "\u660e\u5929\u89c1\uff01"

    goto/16 :goto_2

    .line 896
    .end local v0    # "day":I
    .restart local v7    # "url":Ljava/lang/String;
    .restart local v8    # "viewClick":Landroid/view/View;
    :cond_8
    iget-object v9, v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;->c:Landroid/widget/RelativeLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    goto :goto_3
.end method
