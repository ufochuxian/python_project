.class public Lcom/iflytek/sunflower/c/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
