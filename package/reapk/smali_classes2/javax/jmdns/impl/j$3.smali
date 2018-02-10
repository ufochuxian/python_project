.class Ljavax/jmdns/impl/j$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/jmdns/impl/j;->b(Ljava/lang/String;Ljava/lang/String;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    .line 338
    iput-object p1, p0, Ljavax/jmdns/impl/j$3;->f:Ljavax/jmdns/impl/j;

    iput-object p2, p0, Ljavax/jmdns/impl/j$3;->a:Ljavax/jmdns/a;

    iput-object p3, p0, Ljavax/jmdns/impl/j$3;->b:Ljava/lang/String;

    iput-object p4, p0, Ljavax/jmdns/impl/j$3;->c:Ljava/lang/String;

    iput-boolean p5, p0, Ljavax/jmdns/impl/j$3;->d:Z

    iput-wide p6, p0, Ljavax/jmdns/impl/j$3;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 344
    iget-object v0, p0, Ljavax/jmdns/impl/j$3;->a:Ljavax/jmdns/a;

    iget-object v1, p0, Ljavax/jmdns/impl/j$3;->b:Ljava/lang/String;

    iget-object v2, p0, Ljavax/jmdns/impl/j$3;->c:Ljava/lang/String;

    iget-boolean v3, p0, Ljavax/jmdns/impl/j$3;->d:Z

    iget-wide v4, p0, Ljavax/jmdns/impl/j$3;->e:J

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/a;->b(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 345
    return-void
.end method
