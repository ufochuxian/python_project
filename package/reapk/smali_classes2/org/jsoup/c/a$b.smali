.class Lorg/jsoup/c/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Lorg/jsoup/nodes/f;

.field b:I


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/f;I)V
    .locals 0
    .param p1, "el"    # Lorg/jsoup/nodes/f;
    .param p2, "numAttribsDiscarded"    # I

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lorg/jsoup/c/a$b;->a:Lorg/jsoup/nodes/f;

    .line 144
    iput p2, p0, Lorg/jsoup/c/a$b;->b:I

    .line 145
    return-void
.end method
