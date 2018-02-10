.class Lcom/a/a/c$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c;->n(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c;


# direct methods
.method constructor <init>(Lcom/a/a/c;)V
    .locals 0
    .param p1, "this$0"    # Lcom/a/a/c;

    .prologue
    .line 948
    iput-object p1, p0, Lcom/a/a/c$8;->a:Lcom/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/a/a/c$8;->a:Lcom/a/a/c;

    invoke-static {v0}, Lcom/a/a/c;->c(Lcom/a/a/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 952
    iget-object v0, p0, Lcom/a/a/c$8;->a:Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->r()V

    .line 953
    return-void
.end method
