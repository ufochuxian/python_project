.class Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->setViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$300(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    add-int/lit8 v1, p2, -0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$402(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;I)I

    .line 326
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$400(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v1

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$502(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;I)I

    .line 328
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$300(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$400(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 329
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$600(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$600(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f080169

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$300(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$500(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 332
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$600(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$600(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f080168

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$600(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 319
    return-void
.end method
