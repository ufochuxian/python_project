.class Landroid/support/v7/widget/a/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/a/a$c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/a/a$c;

.field final synthetic b:I

.field final synthetic c:Landroid/support/v7/widget/a/a;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/a/a$c;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/a/a;

    .prologue
    .line 674
    iput-object p1, p0, Landroid/support/v7/widget/a/a$4;->c:Landroid/support/v7/widget/a/a;

    iput-object p2, p0, Landroid/support/v7/widget/a/a$4;->a:Landroid/support/v7/widget/a/a$c;

    iput p3, p0, Landroid/support/v7/widget/a/a$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 677
    iget-object v1, p0, Landroid/support/v7/widget/a/a$4;->c:Landroid/support/v7/widget/a/a;

    iget-object v1, v1, Landroid/support/v7/widget/a/a;->H:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/a/a$4;->c:Landroid/support/v7/widget/a/a;

    iget-object v1, v1, Landroid/support/v7/widget/a/a;->H:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/a/a$4;->a:Landroid/support/v7/widget/a/a$c;

    iget-boolean v1, v1, Landroid/support/v7/widget/a/a$c;->n:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/a/a$4;->a:Landroid/support/v7/widget/a/a$c;

    iget-object v1, v1, Landroid/support/v7/widget/a/a$c;->h:Landroid/support/v7/widget/RecyclerView$w;

    .line 679
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$w;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 680
    iget-object v1, p0, Landroid/support/v7/widget/a/a$4;->c:Landroid/support/v7/widget/a/a;

    iget-object v1, v1, Landroid/support/v7/widget/a/a;->H:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$e;

    move-result-object v0

    .line 684
    .local v0, "animator":Landroid/support/v7/widget/RecyclerView$e;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$e;->a(Landroid/support/v7/widget/RecyclerView$e$b;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/a/a$4;->c:Landroid/support/v7/widget/a/a;

    .line 685
    invoke-virtual {v1}, Landroid/support/v7/widget/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 686
    iget-object v1, p0, Landroid/support/v7/widget/a/a$4;->c:Landroid/support/v7/widget/a/a;

    iget-object v1, v1, Landroid/support/v7/widget/a/a;->D:Landroid/support/v7/widget/a/a$a;

    iget-object v2, p0, Landroid/support/v7/widget/a/a$4;->a:Landroid/support/v7/widget/a/a$c;

    iget-object v2, v2, Landroid/support/v7/widget/a/a$c;->h:Landroid/support/v7/widget/RecyclerView$w;

    iget v3, p0, Landroid/support/v7/widget/a/a$4;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/a/a$a;->a(Landroid/support/v7/widget/RecyclerView$w;I)V

    .line 691
    .end local v0    # "animator":Landroid/support/v7/widget/RecyclerView$e;
    :cond_1
    :goto_0
    return-void

    .line 688
    .restart local v0    # "animator":Landroid/support/v7/widget/RecyclerView$e;
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/a/a$4;->c:Landroid/support/v7/widget/a/a;

    iget-object v1, v1, Landroid/support/v7/widget/a/a;->H:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method