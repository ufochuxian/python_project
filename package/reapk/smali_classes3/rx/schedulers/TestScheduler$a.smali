.class final Lrx/schedulers/TestScheduler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lrx/schedulers/TestScheduler$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/schedulers/TestScheduler$c;Lrx/schedulers/TestScheduler$c;)I
    .locals 8
    .param p1, "action1"    # Lrx/schedulers/TestScheduler$c;
    .param p2, "action2"    # Lrx/schedulers/TestScheduler$c;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 66
    iget-wide v4, p1, Lrx/schedulers/TestScheduler$c;->a:J

    iget-wide v6, p2, Lrx/schedulers/TestScheduler$c;->a:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 67
    invoke-static {p1}, Lrx/schedulers/TestScheduler$c;->a(Lrx/schedulers/TestScheduler$c;)J

    move-result-wide v4

    invoke-static {p2}, Lrx/schedulers/TestScheduler$c;->a(Lrx/schedulers/TestScheduler$c;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    invoke-static {p1}, Lrx/schedulers/TestScheduler$c;->a(Lrx/schedulers/TestScheduler$c;)J

    move-result-wide v4

    invoke-static {p2}, Lrx/schedulers/TestScheduler$c;->a(Lrx/schedulers/TestScheduler$c;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 69
    :cond_3
    iget-wide v4, p1, Lrx/schedulers/TestScheduler$c;->a:J

    iget-wide v6, p2, Lrx/schedulers/TestScheduler$c;->a:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    iget-wide v4, p1, Lrx/schedulers/TestScheduler$c;->a:J

    iget-wide v6, p2, Lrx/schedulers/TestScheduler$c;->a:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Lrx/schedulers/TestScheduler$c;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/schedulers/TestScheduler$c;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/schedulers/TestScheduler$a;->a(Lrx/schedulers/TestScheduler$c;Lrx/schedulers/TestScheduler$c;)I

    move-result v0

    return v0
.end method
