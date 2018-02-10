.class Lcom/jiliguala/niuwa/logic/o/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/o/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/logic/o/a$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/logic/o/a$1;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/o/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;)I
    .locals 4
    .param p1, "s1"    # Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;
    .param p2, "s2"    # Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    .prologue
    .line 103
    iget-wide v0, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->startts:J

    iget v2, p2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->startage:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    .line 105
    :cond_0
    iget-wide v0, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->startts:J

    iget v2, p2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->startage:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 106
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 101
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    check-cast p2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/o/a$a;->a(Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;)I

    move-result v0

    return v0
.end method
