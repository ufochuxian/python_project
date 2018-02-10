.class Landroid/support/v7/widget/q$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/q;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/support/v7/widget/q;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/q;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/q;

    .prologue
    .line 164
    iput-object p1, p0, Landroid/support/v7/widget/q$3;->b:Landroid/support/v7/widget/q;

    iput-object p2, p0, Landroid/support/v7/widget/q$3;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Landroid/support/v7/widget/q$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    .line 168
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$w;
    iget-object v2, p0, Landroid/support/v7/widget/q$3;->b:Landroid/support/v7/widget/q;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/q;->c(Landroid/support/v7/widget/RecyclerView$w;)V

    goto :goto_0

    .line 170
    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$w;
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/q$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 171
    iget-object v1, p0, Landroid/support/v7/widget/q$3;->b:Landroid/support/v7/widget/q;

    iget-object v1, v1, Landroid/support/v7/widget/q;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v7/widget/q$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method
