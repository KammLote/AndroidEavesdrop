.class public final Lcom/google/android/gms/internal/zznn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# static fields
.field private static final zzHo:I

.field private static final zzHp:I

.field private static zzHq:I

.field private static zzHr:I


# instance fields
.field private final mTextColor:I

.field private final zzHs:Ljava/lang/String;

.field private final zzHt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzHu:I

.field private final zzHv:I

.field private final zzHw:I

.field private final zzHx:I

.field private final zzHy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xcc

    const/16 v0, 0xc

    const/16 v1, 0xae

    const/16 v2, 0xce

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zznn;->zzHo:I

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zznn;->zzHp:I

    sput v0, Lcom/google/android/gms/internal/zznn;->zzHq:I

    sget v0, Lcom/google/android/gms/internal/zznn;->zzHo:I

    sput v0, Lcom/google/android/gms/internal/zznn;->zzHr:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznn;->zzHs:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zznn;->zzHt:Ljava/util/List;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/zznn;->zzHu:I

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/zznn;->mTextColor:I

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/google/android/gms/internal/zznn;->zzHv:I

    iput p6, p0, Lcom/google/android/gms/internal/zznn;->zzHw:I

    iput p7, p0, Lcom/google/android/gms/internal/zznn;->zzHx:I

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zznn;->zzHy:Z

    return-void

    :cond_0
    sget v0, Lcom/google/android/gms/internal/zznn;->zzHq:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/google/android/gms/internal/zznn;->zzHr:I

    goto :goto_1

    :cond_2
    const/16 v0, 0xc

    goto :goto_2
.end method


# virtual methods
.method public final getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zznn;->zzHu:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznn;->zzHs:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zznn;->mTextColor:I

    return v0
.end method

.method public final getTextSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zznn;->zzHv:I

    return v0
.end method

.method public final zzec()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zznn;->zzHt:Ljava/util/List;

    return-object v0
.end method

.method public final zzed()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zznn;->zzHw:I

    return v0
.end method

.method public final zzee()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zznn;->zzHx:I

    return v0
.end method

.method public final zzef()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zznn;->zzHy:Z

    return v0
.end method
