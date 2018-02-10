.class Lcom/c/a/a/a/d/g$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/a/a/a/d/g$a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/c/a/a/a/d/g$a;


# direct methods
.method constructor <init>(Lcom/c/a/a/a/d/g$a;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/c/a/a/a/d/g$a;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/c/a/a/a/d/g$a$1;->b:Lcom/c/a/a/a/d/g$a;

    iput-object p2, p0, Lcom/c/a/a/a/d/g$a$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/c/a/a/a/d/g$a$1;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/c/a/a/a/d/g$a$1;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 170
    :cond_0
    return-void
.end method
