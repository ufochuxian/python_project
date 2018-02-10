.class public final Ljavax/jmdns/impl/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/jmdns/impl/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/h$a$a;
    }
.end annotation


# instance fields
.field private final a:Ljavax/jmdns/impl/JmDNSImpl;

.field private final b:Ljava/util/Timer;

.field private final c:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 4
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    const/4 v3, 0x1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Ljavax/jmdns/impl/h$a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    .line 277
    new-instance v0, Ljavax/jmdns/impl/h$a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JmDNS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/jmdns/impl/h$a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").Timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljavax/jmdns/impl/h$a$a;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ljavax/jmdns/impl/h$a;->b:Ljava/util/Timer;

    .line 278
    new-instance v0, Ljavax/jmdns/impl/h$a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JmDNS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/jmdns/impl/h$a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").State.Timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljavax/jmdns/impl/h$a$a;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ljavax/jmdns/impl/h$a;->c:Ljava/util/Timer;

    .line 279
    return-void
.end method


# virtual methods
.method public a(Ljavax/jmdns/impl/b;Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "in"    # Ljavax/jmdns/impl/b;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .prologue
    .line 395
    new-instance v0, Ljavax/jmdns/impl/a/c;

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1, p1, p2, p3}, Ljavax/jmdns/impl/a/c;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/b;Ljava/net/InetAddress;I)V

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->b:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/a/c;->a(Ljava/util/Timer;)V

    .line 396
    return-void
.end method

.method public a(Ljavax/jmdns/impl/m;)V
    .locals 2
    .param p1, "info"    # Ljavax/jmdns/impl/m;

    .prologue
    .line 368
    new-instance v0, Ljavax/jmdns/impl/a/a/b;

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1, p1}, Ljavax/jmdns/impl/a/a/b;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/m;)V

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->b:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/a/a/b;->a(Ljava/util/Timer;)V

    .line 369
    return-void
.end method

.method public a_(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 386
    new-instance v0, Ljavax/jmdns/impl/a/a/c;

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1, p1}, Ljavax/jmdns/impl/a/a/c;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->b:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/a/a/c;->a(Ljava/util/Timer;)V

    .line 387
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Ljavax/jmdns/impl/h$a;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 297
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Ljavax/jmdns/impl/h$a;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 306
    return-void
.end method

.method public j_()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Ljavax/jmdns/impl/h$a;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 288
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Ljavax/jmdns/impl/h$a;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 315
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 323
    new-instance v0, Ljavax/jmdns/impl/a/b/d;

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/a/b/d;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->c:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/a/b/d;->a(Ljava/util/Timer;)V

    .line 324
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 332
    new-instance v0, Ljavax/jmdns/impl/a/b/a;

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/a/b/a;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->c:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/a/b/a;->a(Ljava/util/Timer;)V

    .line 333
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 341
    new-instance v0, Ljavax/jmdns/impl/a/b/e;

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/a/b/e;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->c:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/a/b/e;->a(Ljava/util/Timer;)V

    .line 342
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 350
    new-instance v0, Ljavax/jmdns/impl/a/b/b;

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/a/b/b;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->c:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/a/b/b;->a(Ljava/util/Timer;)V

    .line 351
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 359
    new-instance v0, Ljavax/jmdns/impl/a/b;

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/a/b;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->b:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/a/b;->a(Ljava/util/Timer;)V

    .line 360
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    .line 377
    new-instance v0, Ljavax/jmdns/impl/a/a/d;

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->a:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/a/a/d;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iget-object v1, p0, Ljavax/jmdns/impl/h$a;->b:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/a/a/d;->a(Ljava/util/Timer;)V

    .line 378
    return-void
.end method
