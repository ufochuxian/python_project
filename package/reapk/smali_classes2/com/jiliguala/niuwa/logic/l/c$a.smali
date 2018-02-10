.class Lcom/jiliguala/niuwa/logic/l/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/jiliguala/niuwa/logic/l/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/jiliguala/niuwa/logic/l/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/logic/l/c;-><init>(Lcom/jiliguala/niuwa/logic/l/c$1;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/l/c$a;->a:Lcom/jiliguala/niuwa/logic/l/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
