.class Lcom/a/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c;->v()V
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
    .line 305
    iput-object p1, p0, Lcom/a/a/c$1;->a:Lcom/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/a/a/c$1;->a:Lcom/a/a/c;

    iget-object v1, p0, Lcom/a/a/c$1;->a:Lcom/a/a/c;

    invoke-static {v1}, Lcom/a/a/c;->a(Lcom/a/a/c;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/c;->r:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/a/a/c$1;->a:Lcom/a/a/c;

    invoke-static {v0}, Lcom/a/a/c;->b(Lcom/a/a/c;)Lcom/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/g;->a()V

    .line 311
    return-void
.end method
