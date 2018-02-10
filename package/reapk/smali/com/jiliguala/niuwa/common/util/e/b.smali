.class public Lcom/jiliguala/niuwa/common/util/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/jiliguala/niuwa/common/util/e/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/e/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FF)F
    .locals 8
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 17
    div-float v2, p0, p1

    .line 18
    .local v2, "num":F
    :try_start_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v5, "0.00"

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 19
    .local v0, "df":Ljava/text/DecimalFormat;
    float-to-double v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 20
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 24
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v3    # "s":Ljava/lang/String;
    :goto_0
    return v4

    .line 23
    :catch_0
    move-exception v1

    .line 24
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method
