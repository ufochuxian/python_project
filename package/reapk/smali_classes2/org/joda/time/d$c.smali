.class Lorg/joda/time/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-wide p1, p0, Lorg/joda/time/d$c;->a:J

    .line 571
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/joda/time/d$c;->a:J

    add-long/2addr v0, v2

    return-wide v0
.end method
