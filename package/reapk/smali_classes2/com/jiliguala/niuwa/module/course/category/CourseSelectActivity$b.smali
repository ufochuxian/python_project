.class Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;
.super Landroid/support/v7/widget/RecyclerView$w;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/view/View;

.field final synthetic d:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->d:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .line 512
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    .line 513
    const v0, 0x7f09010b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->c:Landroid/view/View;

    .line 514
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    const v0, 0x7f090282

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->a:Landroid/widget/TextView;

    .line 516
    const v0, 0x7f09010a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->b:Landroid/widget/ImageView;

    .line 517
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 526
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 528
    :pswitch_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->d:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1300(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/spinner/NiceSpinner;->setVisibility(I)V

    .line 529
    const v3, 0x7f090282

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 530
    .local v2, "tv":Landroid/widget/TextView;
    const v3, 0x7f09010a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 531
    .local v1, "iv":Landroid/widget/ImageView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 532
    const-string v3, "#ff2FCA89"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 533
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->d:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$2200(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->d:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$2200(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 534
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->d:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$2200(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 536
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->d:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$2100(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->d:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$2100(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 537
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->d:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$2100(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "#ffB2B2B2"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 540
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->d:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v3, v2}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$2202(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 541
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->d:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$2102(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->d:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1500(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 545
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->d:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$2300(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)V

    .line 546
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->d:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$b;->d:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$900(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5, v0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1700(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x7f09010b
        :pswitch_0
    .end packed-switch
.end method
