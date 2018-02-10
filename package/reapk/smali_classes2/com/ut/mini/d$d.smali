.class public Lcom/ut/mini/d$d;
.super Lcom/ut/mini/d$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aPageName"    # Ljava/lang/String;

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/ut/mini/d$c;-><init>()V

    .line 375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    const-string v0, "_field_page"

    invoke-super {p0, v0, p1}, Lcom/ut/mini/d$c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/d$c;

    .line 378
    :cond_0
    const-string v0, "_field_event_id"

    const-string v1, "2001"

    invoke-super {p0, v0, v1}, Lcom/ut/mini/d$c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/d$c;

    .line 380
    const-string v0, "_field_arg3"

    const-string v1, "0"

    invoke-super {p0, v0, v1}, Lcom/ut/mini/d$c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/d$c;

    .line 381
    return-void
.end method


# virtual methods
.method public a(J)Lcom/ut/mini/d$d;
    .locals 3
    .param p1, "aDuration"    # J

    .prologue
    .line 407
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 408
    const-wide/16 p1, 0x0

    .line 410
    :cond_0
    const-string v0, "_field_arg3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/ut/mini/d$c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/d$c;

    .line 411
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ut/mini/d$d;
    .locals 1
    .param p1, "aReferPage"    # Ljava/lang/String;

    .prologue
    .line 391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const-string v0, "_field_arg1"

    invoke-super {p0, v0, p1}, Lcom/ut/mini/d$c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/d$c;

    .line 394
    :cond_0
    return-object p0
.end method
