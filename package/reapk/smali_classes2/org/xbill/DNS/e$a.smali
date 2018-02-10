.class Lorg/xbill/DNS/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Lorg/xbill/DNS/Name;

.field b:I

.field c:Lorg/xbill/DNS/e$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/e$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/xbill/DNS/e$1;

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/e$a;-><init>()V

    return-void
.end method
