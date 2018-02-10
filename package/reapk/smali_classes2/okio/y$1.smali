.class final Lokio/y$1;
.super Lokio/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lokio/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lokio/y;
    .locals 0
    .param p1, "deadlineNanoTime"    # J

    .prologue
    .line 55
    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lokio/y;
    .locals 0
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 51
    return-object p0
.end method

.method public g()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    return-void
.end method
