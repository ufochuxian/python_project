.class Ljavax/jmdns/impl/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/jmdns/impl/j;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljavax/jmdns/a;

.field final synthetic b:Ljavax/jmdns/impl/j;


# direct methods
.method constructor <init>(Ljavax/jmdns/impl/j;Ljavax/jmdns/a;)V
    .locals 0
    .param p1, "this$0"    # Ljavax/jmdns/impl/j;

    .prologue
    .line 124
    iput-object p1, p0, Ljavax/jmdns/impl/j$1;->b:Ljavax/jmdns/impl/j;

    iput-object p2, p0, Ljavax/jmdns/impl/j$1;->a:Ljavax/jmdns/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/j$1;->a:Ljavax/jmdns/a;

    invoke-virtual {v0}, Ljavax/jmdns/a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method
