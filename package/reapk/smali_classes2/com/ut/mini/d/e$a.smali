.class Lcom/ut/mini/d/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Lcom/ut/mini/d/b;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/ut/mini/d/e$a;->a:I

    .line 255
    iput-object v1, p0, Lcom/ut/mini/d/e$a;->b:Ljava/lang/Object;

    .line 256
    iput-object v1, p0, Lcom/ut/mini/d/e$a;->c:Lcom/ut/mini/d/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ut/mini/d/e$1;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/ut/mini/d/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/ut/mini/d/e$a;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 263
    iput p1, p0, Lcom/ut/mini/d/e$a;->a:I

    .line 264
    return-void
.end method

.method public a(Lcom/ut/mini/d/b;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/ut/mini/d/e$a;->c:Lcom/ut/mini/d/b;

    .line 280
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/ut/mini/d/e$a;->b:Ljava/lang/Object;

    .line 272
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/ut/mini/d/e$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Lcom/ut/mini/d/b;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/ut/mini/d/e$a;->c:Lcom/ut/mini/d/b;

    return-object v0
.end method
