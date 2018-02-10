.class Ljavax/jmdns/impl/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/jmdns/impl/j;->a(Ljava/lang/String;Ljava/lang/String;ZJ)[Ljavax/jmdns/ServiceInfo;
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
        "Ljavax/jmdns/ServiceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljavax/jmdns/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:J

.field final synthetic f:Ljavax/jmdns/impl/j;


# direct methods
.method constructor <init>(Ljavax/jmdns/impl/j;Ljavax/jmdns/a;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0
    .param p1, "this$0"    # Ljavax/jmdns/impl/j;

    .prologue
    .line 259
    iput-object p1, p0, Ljavax/jmdns/impl/j$2;->f:Ljavax/jmdns/impl/j;

    iput-object p2, p0, Ljavax/jmdns/impl/j$2;->a:Ljavax/jmdns/a;

    iput-object p3, p0, Ljavax/jmdns/impl/j$2;->b:Ljava/lang/String;

    iput-object p4, p0, Ljavax/jmdns/impl/j$2;->c:Ljava/lang/String;

    iput-boolean p5, p0, Ljavax/jmdns/impl/j$2;->d:Z

    iput-wide p6, p0, Ljavax/jmdns/impl/j$2;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljavax/jmdns/ServiceInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Ljavax/jmdns/impl/j$2;->a:Ljavax/jmdns/a;

    iget-object v1, p0, Ljavax/jmdns/impl/j$2;->b:Ljava/lang/String;

    iget-object v2, p0, Ljavax/jmdns/impl/j$2;->c:Ljava/lang/String;

    iget-boolean v3, p0, Ljavax/jmdns/impl/j$2;->d:Z

    iget-wide v4, p0, Ljavax/jmdns/impl/j$2;->e:J

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/a;->a(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

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
    .line 259
    invoke-virtual {p0}, Ljavax/jmdns/impl/j$2;->a()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method
