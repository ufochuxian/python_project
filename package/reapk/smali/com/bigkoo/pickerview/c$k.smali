.class public final Lcom/bigkoo/pickerview/c$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bigkoo/pickerview/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# static fields
.field public static final pickerview:[I

.field public static final pickerview_pickerview_dividerColor:I = 0x0

.field public static final pickerview_pickerview_gravity:I = 0x1

.field public static final pickerview_pickerview_textColorCenter:I = 0x2

.field public static final pickerview_pickerview_textColorOut:I = 0x3

.field public static final pickerview_pickerview_textSize:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bigkoo/pickerview/c$k;->pickerview:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040173
        0x7f040174
        0x7f040175
        0x7f040176
        0x7f040177
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
