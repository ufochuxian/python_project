.class Landroid/support/v7/widget/q$2;
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
    .line 141
    iput-object p1, p0, Landroid/support/v7/widget/q$2;->b:Landroid/support/v7/widget/q;

    iput-object p2, p0, Landroid/support/v7/widget/q$2;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    iget-object v1, p0, Landroid/support/v7/widget/q$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/q$a;

    .line 145
    .local v0, "change":Landroid/support/v7/widget/q$a;
    iget-object v2, p0, Landroid/support/v7/widget/q$2;->b:Landroid/support/v7/widget/q;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/q;->a(Landroid/support/v7/widget/q$a;)V

    goto :goto_0

    .line 147
    .end local v0    # "change":Landroid/support/v7/widget/q$a;
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/q$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 148
    iget-object v1, p0, Landroid/support/v7/widget/q$2;->b:Landroid/support/v7/widget/q;

    iget-object v1, v1, Landroid/support/v7/widget/q;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v7/widget/q$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method
