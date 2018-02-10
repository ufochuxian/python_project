.class Lrx/b$25$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$25;->a(Lrx/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/d;

.field final synthetic b:Lrx/h$a;

.field final synthetic c:Lrx/b$25;


# direct methods
.method constructor <init>(Lrx/b$25;Lrx/d;Lrx/h$a;)V
    .locals 0

    .prologue
    .line 2145
    iput-object p1, p0, Lrx/b$25$1;->c:Lrx/b$25;

    iput-object p2, p0, Lrx/b$25$1;->a:Lrx/d;

    iput-object p3, p0, Lrx/b$25$1;->b:Lrx/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 2149
    :try_start_0
    iget-object v0, p0, Lrx/b$25$1;->c:Lrx/b$25;

    iget-object v0, v0, Lrx/b$25;->b:Lrx/b;

    iget-object v1, p0, Lrx/b$25$1;->a:Lrx/d;

    invoke-virtual {v0, v1}, Lrx/b;->a(Lrx/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    iget-object v0, p0, Lrx/b$25$1;->b:Lrx/h$a;

    invoke-virtual {v0}, Lrx/h$a;->unsubscribe()V

    .line 2153
    return-void

    .line 2151
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/b$25$1;->b:Lrx/h$a;

    invoke-virtual {v1}, Lrx/h$a;->unsubscribe()V

    throw v0
.end method
