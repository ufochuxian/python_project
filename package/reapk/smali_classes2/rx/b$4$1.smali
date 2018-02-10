.class Lrx/b$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$4;->a(Lrx/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/d;

.field final synthetic b:Lrx/h$a;

.field final synthetic c:Lrx/b$4;


# direct methods
.method constructor <init>(Lrx/b$4;Lrx/d;Lrx/h$a;)V
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lrx/b$4$1;->c:Lrx/b$4;

    iput-object p2, p0, Lrx/b$4$1;->a:Lrx/d;

    iput-object p3, p0, Lrx/b$4$1;->b:Lrx/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 812
    :try_start_0
    iget-object v0, p0, Lrx/b$4$1;->a:Lrx/d;

    invoke-interface {v0}, Lrx/d;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    iget-object v0, p0, Lrx/b$4$1;->b:Lrx/h$a;

    invoke-virtual {v0}, Lrx/h$a;->unsubscribe()V

    .line 816
    return-void

    .line 814
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/b$4$1;->b:Lrx/h$a;

    invoke-virtual {v1}, Lrx/h$a;->unsubscribe()V

    throw v0
.end method
