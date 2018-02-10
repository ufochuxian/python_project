.class Lrx/internal/schedulers/a$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/a$b;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/c/b;

.field final synthetic b:Lrx/internal/schedulers/a$b;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/a$b;Lrx/c/b;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lrx/internal/schedulers/a$b$1;->b:Lrx/internal/schedulers/a$b;

    iput-object p2, p0, Lrx/internal/schedulers/a$b$1;->a:Lrx/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lrx/internal/schedulers/a$b$1;->b:Lrx/internal/schedulers/a$b;

    invoke-virtual {v0}, Lrx/internal/schedulers/a$b;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/a$b$1;->a:Lrx/c/b;

    invoke-interface {v0}, Lrx/c/b;->call()V

    goto :goto_0
.end method
