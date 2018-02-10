.class Lcom/c/a/a/a/c$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/a/a/a/c;->autoLoadMore(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/a/a/c;


# direct methods
.method constructor <init>(Lcom/c/a/a/a/c;)V
    .locals 0
    .param p1, "this$0"    # Lcom/c/a/a/a/c;

    .prologue
    .line 1268
    .local p0, "this":Lcom/c/a/a/a/c$7;, "Lcom/c/a/a/a/c$7;"
    iput-object p1, p0, Lcom/c/a/a/a/c$7;->a:Lcom/c/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1271
    .local p0, "this":Lcom/c/a/a/a/c$7;, "Lcom/c/a/a/a/c$7;"
    iget-object v0, p0, Lcom/c/a/a/a/c$7;->a:Lcom/c/a/a/a/c;

    invoke-static {v0}, Lcom/c/a/a/a/c;->access$300(Lcom/c/a/a/a/c;)Lcom/c/a/a/a/c$f;

    move-result-object v0

    invoke-interface {v0}, Lcom/c/a/a/a/c$f;->a()V

    .line 1272
    return-void
.end method
