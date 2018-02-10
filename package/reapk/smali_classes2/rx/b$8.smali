.class Lrx/b$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->a(JLjava/util/concurrent/TimeUnit;Lrx/h;Z)Lrx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/h;

.field final synthetic b:J

.field final synthetic c:Ljava/util/concurrent/TimeUnit;

.field final synthetic d:Z

.field final synthetic e:Lrx/b;


# direct methods
.method constructor <init>(Lrx/b;Lrx/h;JLjava/util/concurrent/TimeUnit;Z)V
    .locals 1

    .prologue
    .line 1235
    iput-object p1, p0, Lrx/b$8;->e:Lrx/b;

    iput-object p2, p0, Lrx/b$8;->a:Lrx/h;

    iput-wide p3, p0, Lrx/b$8;->b:J

    iput-object p5, p0, Lrx/b$8;->c:Ljava/util/concurrent/TimeUnit;

    iput-boolean p6, p0, Lrx/b$8;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 4
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 1238
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    .line 1240
    .local v0, "set":Lrx/i/b;
    iget-object v2, p0, Lrx/b$8;->a:Lrx/h;

    invoke-virtual {v2}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v1

    .line 1241
    .local v1, "w":Lrx/h$a;
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 1243
    iget-object v2, p0, Lrx/b$8;->e:Lrx/b;

    new-instance v3, Lrx/b$8$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lrx/b$8$1;-><init>(Lrx/b$8;Lrx/i/b;Lrx/h$a;Lrx/d;)V

    invoke-virtual {v2, v3}, Lrx/b;->a(Lrx/d;)V

    .line 1285
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1235
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/b$8;->a(Lrx/d;)V

    return-void
.end method
