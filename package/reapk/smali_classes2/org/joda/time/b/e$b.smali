.class Lorg/joda/time/b/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:Lorg/joda/time/DateTimeZone;

.field final b:Ljava/lang/Integer;

.field final c:[Lorg/joda/time/b/e$a;

.field final d:I

.field final synthetic e:Lorg/joda/time/b/e;


# direct methods
.method constructor <init>(Lorg/joda/time/b/e;)V
    .locals 1

    .prologue
    .line 435
    iput-object p1, p0, Lorg/joda/time/b/e$b;->e:Lorg/joda/time/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    invoke-static {p1}, Lorg/joda/time/b/e;->a(Lorg/joda/time/b/e;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/b/e$b;->a:Lorg/joda/time/DateTimeZone;

    .line 437
    invoke-static {p1}, Lorg/joda/time/b/e;->b(Lorg/joda/time/b/e;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/b/e$b;->b:Ljava/lang/Integer;

    .line 438
    invoke-static {p1}, Lorg/joda/time/b/e;->c(Lorg/joda/time/b/e;)[Lorg/joda/time/b/e$a;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/b/e$b;->c:[Lorg/joda/time/b/e$a;

    .line 439
    invoke-static {p1}, Lorg/joda/time/b/e;->d(Lorg/joda/time/b/e;)I

    move-result v0

    iput v0, p0, Lorg/joda/time/b/e$b;->d:I

    .line 440
    return-void
.end method


# virtual methods
.method a(Lorg/joda/time/b/e;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 443
    iget-object v1, p0, Lorg/joda/time/b/e$b;->e:Lorg/joda/time/b/e;

    if-eq p1, v1, :cond_0

    .line 444
    const/4 v0, 0x0

    .line 457
    :goto_0
    return v0

    .line 446
    :cond_0
    iget-object v1, p0, Lorg/joda/time/b/e$b;->a:Lorg/joda/time/DateTimeZone;

    invoke-static {p1, v1}, Lorg/joda/time/b/e;->a(Lorg/joda/time/b/e;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    .line 447
    iget-object v1, p0, Lorg/joda/time/b/e$b;->b:Ljava/lang/Integer;

    invoke-static {p1, v1}, Lorg/joda/time/b/e;->a(Lorg/joda/time/b/e;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 448
    iget-object v1, p0, Lorg/joda/time/b/e$b;->c:[Lorg/joda/time/b/e$a;

    invoke-static {p1, v1}, Lorg/joda/time/b/e;->a(Lorg/joda/time/b/e;[Lorg/joda/time/b/e$a;)[Lorg/joda/time/b/e$a;

    .line 449
    iget v1, p0, Lorg/joda/time/b/e$b;->d:I

    invoke-static {p1}, Lorg/joda/time/b/e;->d(Lorg/joda/time/b/e;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 454
    invoke-static {p1, v0}, Lorg/joda/time/b/e;->a(Lorg/joda/time/b/e;Z)Z

    .line 456
    :cond_1
    iget v1, p0, Lorg/joda/time/b/e$b;->d:I

    invoke-static {p1, v1}, Lorg/joda/time/b/e;->a(Lorg/joda/time/b/e;I)I

    goto :goto_0
.end method
