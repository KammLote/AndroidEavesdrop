.class final Lcom/google/android/gms/internal/eb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/android/gms/internal/do",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private synthetic zzbLD:Lcom/google/android/gms/internal/ea;

.field private zzbLw:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ea;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/eb;->zzbLD:Lcom/google/android/gms/internal/ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/eb;->zzbLw:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/eb;->zzbLw:I

    iget-object v1, p0, Lcom/google/android/gms/internal/eb;->zzbLD:Lcom/google/android/gms/internal/ea;

    invoke-static {v1}, Lcom/google/android/gms/internal/ea;->zza(Lcom/google/android/gms/internal/ea;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/eb;->zzbLw:I

    iget-object v1, p0, Lcom/google/android/gms/internal/eb;->zzbLD:Lcom/google/android/gms/internal/ea;

    invoke-static {v1}, Lcom/google/android/gms/internal/ea;->zza(Lcom/google/android/gms/internal/ea;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ds;

    iget v1, p0, Lcom/google/android/gms/internal/eb;->zzbLw:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/eb;->zzbLw:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ds;-><init>(Ljava/lang/Double;)V

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
