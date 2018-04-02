.class Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 470
    new-instance v0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b007f

    const/4 v4, 0x0

    .line 471
    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;-><init>(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Landroid/view/View;)V

    .line 472
    .local v0, "holder":Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;
    return-object v0
.end method

.method public a(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;I)V
    .locals 5
    .param p1, "holder"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;
    .param p2, "position"    # I

    .prologue
    .line 477
    iget-object v2, p1, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$800(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v1, p1, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->a:Landroid/widget/TextView;

    const v2, 0x7f080174

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 479
    iget-object v2, p1, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$800(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;

    iget-boolean v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;->sel:Z

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 480
    iget-object v2, p1, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$800(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;

    iget-boolean v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;->sel:Z

    if-eqz v1, :cond_3

    const-string v1, "#ff2FCA89"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 481
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$800(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;

    iget-boolean v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;->sel:Z

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    iget-object v2, p1, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->b:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$2102(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 483
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    iget-object v2, p1, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->a:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$2202(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 486
    :cond_0
    iget-object v1, p1, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$800(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;->thmb:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 487
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .line 488
    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$800(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;->thmb:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?imageMogr2/thumbnail/160x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->b:Landroid/widget/ImageView;

    .line 489
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v4

    .line 490
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v4

    .line 488
    invoke-virtual {v2, v1, v3, v4}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 491
    iget-object v2, p1, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$800(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;->thmb:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 494
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$800(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;->cat:Ljava/lang/String;

    .line 495
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p1, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 496
    return-void

    .line 480
    .end local v0    # "id":Ljava/lang/String;
    :cond_3
    const-string v1, "#ffB2B2B2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$800(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 0

    .prologue
    .line 466
    check-cast p1, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;->a(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$a;->a(Landroid/view/ViewGroup;I)Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;

    move-result-object v0

    return-object v0
.end method
