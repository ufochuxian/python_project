.class public interface abstract Lcom/jiliguala/niuwa/common/a$ab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ab"
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String; = "ee1fe6df7ece373997"

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String; = "-relay-"

.field public static final g:Ljava/lang/String; = "-home-"

.field public static final h:Ljava/lang/String; = "-user-"

.field public static final i:Ljava/lang/String; = "file:///android_asset/local_error.html"

.field public static final j:Ljava/lang/String; = "file:///android_asset/refresh"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 243
    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "90dbceebab1bc10ada1453116832245"

    :goto_0
    sput-object v0, Lcom/jiliguala/niuwa/common/a$ab;->a:Ljava/lang/String;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://wap.koudaitong.com/v2/showcase/homepage?alias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "15d6j80pl"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/a$ab;->c:Ljava/lang/String;

    .line 246
    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "https://wap.koudaitong.com/v2/showcase/usercenter?kdt_id=15456025&reft=1455782993106&spm=h14612297"

    :goto_2
    sput-object v0, Lcom/jiliguala/niuwa/common/a$ab;->d:Ljava/lang/String;

    .line 248
    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    if-eqz v0, :cond_3

    const-string v0, "https://wap.koudaitong.com/v2/goods/1yf1tkgij28bt?reft=1455879484364&spm=h14612297"

    :goto_3
    sput-object v0, Lcom/jiliguala/niuwa/common/a$ab;->e:Ljava/lang/String;

    return-void

    .line 243
    :cond_0
    const-string v0, "3a4ff28c4ad30f27701452581093234"

    goto :goto_0

    .line 245
    :cond_1
    const-string v0, "17zatu2k1"

    goto :goto_1

    .line 246
    :cond_2
    const-string v0, "https://wap.koudaitong.com/v2/showcase/usercenter?kdt_id=14756616&reft=1455781249927_1455783265055&spm=h13913754_sc15326246"

    goto :goto_2

    .line 248
    :cond_3
    const-string v0, "https://wap.koudaitong.com/v2/goods/2ontuz2zarg7s?reft=1455939669953&spm=h13913754"

    goto :goto_3
.end method
