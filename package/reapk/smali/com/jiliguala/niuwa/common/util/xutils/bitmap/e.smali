.class public Lcom/jiliguala/niuwa/common/util/xutils/bitmap/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Landroid/widget/AbsListView$OnScrollListener;

.field private d:Lcom/jiliguala/niuwa/common/util/xutils/task/f;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/task/f;ZZ)V
    .locals 1
    .param p1, "taskHandler"    # Lcom/jiliguala/niuwa/common/util/xutils/task/f;
    .param p2, "pauseOnScroll"    # Z
    .param p3, "pauseOnFling"    # Z

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/e;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/task/f;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/task/f;ZZLandroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "taskHandler"    # Lcom/jiliguala/niuwa/common/util/xutils/task/f;
    .param p2, "pauseOnScroll"    # Z
    .param p3, "pauseOnFling"    # Z
    .param p4, "customListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/e;->d:Lcom/jiliguala/niuwa/common/util/xutils/task/f;

    .line 58
    iput-boolean p2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/e;->a:Z

    .line 59
    iput-boolean p3, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/e;->b:Z

    .line 60
    iput-object p4, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/e;->c:Landroid/widget/AbsListView$OnScrollListener;

    .line 61
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/e;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/e;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 92
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 65
    packed-switch p2, :pswitch_data_0

    .line 82
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/e;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/e;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 85
    :cond_1
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/e;->d:Lcom/jiliguala/niuwa/common/util/xutils/task/f;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/f;->j()V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/e;->a:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/e;->d:Lcom/jiliguala/niuwa/common/util/xutils/task/f;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/f;->i()V

    goto :goto_0

    .line 75
    :pswitch_2
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/e;->b:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/e;->d:Lcom/jiliguala/niuwa/common/util/xutils/task/f;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/f;->i()V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
