.class public Lcom/jiliguala/niuwa/module/album/multi_image_selector/utils/TimeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/utils/TimeUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/utils/TimeUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatPhotoDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 20
    const-string v0, "yyyy-MM-dd"

    invoke-static {p0, p1, v0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/utils/TimeUtils;->timeFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPhotoDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 27
    .local v2, "time":J
    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/utils/TimeUtils;->formatPhotoDate(J)Ljava/lang/String;

    move-result-object v1

    .line 29
    .end local v2    # "time":J
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "1970-01-01"

    goto :goto_0
.end method

.method public static millSecTranslate(J)Ljava/lang/String;
    .locals 10
    .param p0, "total"    # J

    .prologue
    const/high16 v8, 0x42700000    # 60.0f

    .line 33
    long-to-float v6, p0

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float v5, v6, v7

    .line 34
    .local v5, "seconds":F
    div-float v0, v5, v8

    .line 35
    .local v0, "minute":F
    rem-float v3, v5, v8

    .line 36
    .local v3, "second":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v2, "sBuilder":Ljava/lang/StringBuilder;
    float-to-int v1, v0

    .line 38
    .local v1, "minute_int":I
    float-to-int v4, v3

    .line 40
    .local v4, "second_int":I
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_0
    const/16 v6, 0x3c

    if-eq v4, v6, :cond_1

    .line 44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static secToMin(J)I
    .locals 6
    .param p0, "time"    # J

    .prologue
    const-wide/16 v4, 0x3c

    .line 56
    cmp-long v1, p0, v4

    if-gtz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    .line 59
    :cond_0
    div-long v2, p0, v4

    long-to-int v0, v2

    .line 60
    .local v0, "minutes":I
    goto :goto_0
.end method

.method public static timeFormat(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "timeMillis"    # J
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 16
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
