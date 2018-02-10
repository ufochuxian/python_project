.class Lrx/internal/schedulers/c$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/c$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/i/c;

.field final synthetic b:Lrx/internal/schedulers/c$a;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/c$a;Lrx/i/c;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lrx/internal/schedulers/c$a$1;->b:Lrx/internal/schedulers/c$a;

    iput-object p2, p0, Lrx/internal/schedulers/c$a$1;->a:Lrx/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lrx/internal/schedulers/c$a$1;->b:Lrx/internal/schedulers/c$a;

    iget-object v0, v0, Lrx/internal/schedulers/c$a;->b:Lrx/i/b;

    iget-object v1, p0, Lrx/internal/schedulers/c$a$1;->a:Lrx/i/c;

    invoke-virtual {v0, v1}, Lrx/i/b;->b(Lrx/m;)V

    .line 135
    return-void
.end method
