.class Lcom/a/a/c$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c$10;


# direct methods
.method constructor <init>(Lcom/a/a/c$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/a/a/c$10;

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/a/a/c$10$1;->a:Lcom/a/a/c$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/a/a/c$10$1;->a:Lcom/a/a/c$10;

    iget-object v0, v0, Lcom/a/a/c$10;->c:Lcom/a/a/c;

    iget-object v1, p0, Lcom/a/a/c$10$1;->a:Lcom/a/a/c$10;

    iget-object v1, v1, Lcom/a/a/c$10;->c:Lcom/a/a/c;

    invoke-static {v1}, Lcom/a/a/c;->e(Lcom/a/a/c;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->f(Z)V

    .line 1105
    return-void
.end method
