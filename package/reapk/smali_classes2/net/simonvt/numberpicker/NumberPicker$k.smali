.class Lnet/simonvt/numberpicker/NumberPicker$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/simonvt/numberpicker/NumberPicker$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# instance fields
.field final a:Ljava/lang/StringBuilder;

.field b:C

.field c:Ljava/util/Formatter;

.field final d:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$k;->a:Ljava/lang/StringBuilder;

    .line 165
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$k;->d:[Ljava/lang/Object;

    .line 168
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 169
    .local v0, "locale":Ljava/util/Locale;
    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker$k;->a(Ljava/util/Locale;)V

    .line 170
    return-void
.end method

.method private a(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker$k;->c(Ljava/util/Locale;)Ljava/util/Formatter;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$k;->c:Ljava/util/Formatter;

    .line 174
    invoke-static {p1}, Lnet/simonvt/numberpicker/NumberPicker$k;->b(Ljava/util/Locale;)C

    move-result v0

    iput-char v0, p0, Lnet/simonvt/numberpicker/NumberPicker$k;->b:C

    .line 175
    return-void
.end method

.method private static b(Ljava/util/Locale;)C
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 190
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    return v0
.end method

.method private c(Ljava/util/Locale;)Ljava/util/Formatter;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 194
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$k;->a:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 179
    .local v0, "currentLocale":Ljava/util/Locale;
    iget-char v1, p0, Lnet/simonvt/numberpicker/NumberPicker$k;->b:C

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker$k;->b(Ljava/util/Locale;)C

    move-result v2

    if-eq v1, v2, :cond_0

    .line 180
    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker$k;->a(Ljava/util/Locale;)V

    .line 182
    :cond_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$k;->d:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 183
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$k;->a:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$k;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$k;->c:Ljava/util/Formatter;

    const-string v2, "%02d"

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$k;->d:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 185
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$k;->c:Ljava/util/Formatter;

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
