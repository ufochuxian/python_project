.class Ljavax/jmdns/impl/j$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/jmdns/impl/j;->a(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Ljavax/jmdns/ServiceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljavax/jmdns/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Ljavax/jmdns/impl/j;


# direct methods
.method constructor <init>(Ljavax/jmdns/impl/j;Ljavax/jmdns/a;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Ljavax/jmdns/impl/j;

    .prologue
    .line 523
    iput-object p1, p0, Ljavax/jmdns/impl/j$4;->d:Ljavax/jmdns/impl/j;

    iput-object p2, p0, Ljavax/jmdns/impl/j$4;->a:Ljavax/jmdns/a;

    iput-object p3, p0, Ljavax/jmdns/impl/j$4;->b:Ljava/lang/String;

    iput-wide p4, p0, Ljavax/jmdns/impl/j$4;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Ljavax/jmdns/impl/j$4;->a:Ljavax/jmdns/a;

    iget-object v1, p0, Ljavax/jmdns/impl/j$4;->b:Ljava/lang/String;

    iget-wide v2, p0, Ljavax/jmdns/impl/j$4;->c:J

    invoke-virtual {v0, v1, v2, v3}, Ljavax/jmdns/a;->a(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 523
    invoke-virtual {p0}, Ljavax/jmdns/impl/j$4;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
