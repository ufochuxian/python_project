.class public Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FRIENDLY_DATETIME_FORMATTER:Lorg/joda/time/b/b;

.field private static final HMYMD_DATETIME_FORMATTER:Lorg/joda/time/b/b;

.field private static final PERIOD_FORMATTER:Lorg/joda/time/b/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Lorg/joda/time/b/l;

    invoke-direct {v0}, Lorg/joda/time/b/l;-><init>()V

    invoke-virtual {v0}, Lorg/joda/time/b/l;->j()Lorg/joda/time/b/l;

    move-result-object v0

    const-string v1, " y "

    invoke-virtual {v0, v1}, Lorg/joda/time/b/l;->c(Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/b/l;->k()Lorg/joda/time/b/l;

    move-result-object v0

    const-string v1, " m "

    .line 18
    invoke-virtual {v0, v1}, Lorg/joda/time/b/l;->c(Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/b/l;->l()Lorg/joda/time/b/l;

    move-result-object v0

    const-string v1, " w "

    invoke-virtual {v0, v1}, Lorg/joda/time/b/l;->c(Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/b/l;->m()Lorg/joda/time/b/l;

    move-result-object v0

    const-string v1, " d "

    invoke-virtual {v0, v1}, Lorg/joda/time/b/l;->c(Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/b/l;->n()Lorg/joda/time/b/l;

    move-result-object v0

    const-string v1, " hr "

    const-string v2, " hrs "

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/b/l;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lorg/joda/time/b/l;->h()Lorg/joda/time/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/b/l;->o()Lorg/joda/time/b/l;

    move-result-object v0

    const-string v1, " min "

    const-string v2, " mins "

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/b/l;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/b/l;->a()Lorg/joda/time/b/k;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->PERIOD_FORMATTER:Lorg/joda/time/b/k;

    .line 21
    const-string v0, "MMMM dd, yyyy"

    invoke-static {v0}, Lorg/joda/time/b/a;->a(Ljava/lang/String;)Lorg/joda/time/b/b;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->FRIENDLY_DATETIME_FORMATTER:Lorg/joda/time/b/b;

    .line 22
    const-string v0, "YYYY-MM-dd HH:mm"

    invoke-static {v0}, Lorg/joda/time/b/a;->a(Ljava/lang/String;)Lorg/joda/time/b/b;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->HMYMD_DATETIME_FORMATTER:Lorg/joda/time/b/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatBytesAsMegabytes(J)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # J

    .prologue
    .line 25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.2f MB"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    long-to-double v4, p0

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateAsFriendlyString(Lorg/joda/time/DateTime;)Ljava/lang/String;
    .locals 1
    .param p0, "dateTime"    # Lorg/joda/time/DateTime;

    .prologue
    .line 41
    sget-object v0, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->FRIENDLY_DATETIME_FORMATTER:Lorg/joda/time/b/b;

    invoke-virtual {v0, p0}, Lorg/joda/time/b/b;->a(Lorg/joda/time/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateAsTimeAgo(Lorg/joda/time/DateTime;)Ljava/lang/String;
    .locals 3
    .param p0, "dateTime"    # Lorg/joda/time/DateTime;

    .prologue
    .line 36
    new-instance v0, Lorg/joda/time/Period;

    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/joda/time/Period;-><init>(Lorg/joda/time/l;Lorg/joda/time/l;)V

    .line 37
    .local v0, "period":Lorg/joda/time/Period;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->PERIOD_FORMATTER:Lorg/joda/time/b/k;

    invoke-virtual {v2, v0}, Lorg/joda/time/b/k;->a(Lorg/joda/time/o;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ago"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatDateAsYMDHM(Lorg/joda/time/DateTime;)Ljava/lang/String;
    .locals 1
    .param p0, "installDate"    # Lorg/joda/time/DateTime;

    .prologue
    .line 45
    sget-object v0, Lcom/jiliguala/niuwa/module/story/helpers/FormattingHelper;->HMYMD_DATETIME_FORMATTER:Lorg/joda/time/b/b;

    invoke-virtual {v0, p0}, Lorg/joda/time/b/b;->a(Lorg/joda/time/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPercentageInBrackets(D)Ljava/lang/String;
    .locals 6
    .param p0, "fraction"    # D

    .prologue
    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "(%.0f%%)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
