.class final Lokio/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 306
    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/a$a;->setDaemon(Z)V

    .line 308
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 313
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lokio/a;->e()Lokio/a;

    move-result-object v0

    .line 316
    .local v0, "timedOut":Lokio/a;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lokio/a;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    .end local v0    # "timedOut":Lokio/a;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
