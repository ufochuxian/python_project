.class Lorg/joda/time/d$a;
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
    name = "a"
.end annotation


# instance fields
.field private final a:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    iput-wide p1, p0, Lorg/joda/time/d$a;->a:J

    .line 547
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 554
    iget-wide v0, p0, Lorg/joda/time/d$a;->a:J

    return-wide v0
.end method
