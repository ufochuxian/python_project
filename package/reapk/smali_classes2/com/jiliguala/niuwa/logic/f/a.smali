.class public Lcom/jiliguala/niuwa/logic/f/a;
.super Lcom/jiliguala/niuwa/logic/f/b;
.source "SourceFile"


# static fields
.field static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/jiliguala/niuwa/logic/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/f/a;->a:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lcom/jiliguala/niuwa/logic/f/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/f/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/f/a;->b:Lcom/jiliguala/niuwa/logic/f/a;

    .line 14
    sget-object v0, Lcom/jiliguala/niuwa/logic/f/a;->a:Ljava/util/ArrayList;

    const-string v1, "libmp3lame.so"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/f/b;-><init>()V

    .line 20
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/f/a;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/jiliguala/niuwa/logic/f/a;->b:Lcom/jiliguala/niuwa/logic/f/a;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-object v0, Lcom/jiliguala/niuwa/logic/f/a;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/jiliguala/niuwa/logic/f/b;->c()Z

    move-result v0

    return v0
.end method
