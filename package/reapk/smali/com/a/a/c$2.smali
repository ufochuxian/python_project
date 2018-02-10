.class Lcom/a/a/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c;->a(Lokhttp3/y;Ljava/lang/String;JJ)V
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
    .line 1135
    iput-object p1, p0, Lcom/a/a/c$2;->a:Lcom/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/a/a/c$2;->a:Lcom/a/a/c;

    iget-object v0, v0, Lcom/a/a/c;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1139
    iget-object v0, p0, Lcom/a/a/c$2;->a:Lcom/a/a/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->f(Z)V

    .line 1140
    return-void
.end method
