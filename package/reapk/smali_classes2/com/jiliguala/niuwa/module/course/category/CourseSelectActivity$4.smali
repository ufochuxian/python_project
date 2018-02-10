.class Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$4;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 363
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$4;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0, p2}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1802(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;I)I

    .line 333
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 335
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->j()V

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$4;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1800(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 358
    :cond_0
    :goto_1
    return-void

    .line 337
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->k()V

    goto :goto_0

    .line 342
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$4;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$300(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$4;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$300(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 349
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$4;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1900(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$4;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$600(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$4;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$000(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$4;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$100(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$4;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$2000(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)V

    goto :goto_1

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
