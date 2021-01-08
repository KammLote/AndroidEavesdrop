.class final Lcom/google/android/gms/internal/zzahq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic zzZF:I

.field private synthetic zzZG:I

.field private synthetic zzZH:I

.field private synthetic zzZI:Lcom/google/android/gms/internal/zzahp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahp;III)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzahq;->zzZI:Lcom/google/android/gms/internal/zzahp;

    iput p2, p0, Lcom/google/android/gms/internal/zzahq;->zzZF:I

    iput p3, p0, Lcom/google/android/gms/internal/zzahq;->zzZG:I

    iput p4, p0, Lcom/google/android/gms/internal/zzahq;->zzZH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzahq;->zzZF:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahq;->zzZI:Lcom/google/android/gms/internal/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahp;->zza(Lcom/google/android/gms/internal/zzahp;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzahq;->zzZG:I

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzGt:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahq;->zzZI:Lcom/google/android/gms/internal/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahp;->zzb(Lcom/google/android/gms/internal/zzahp;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzahq;->zzZH:I

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzGu:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahq;->zzZI:Lcom/google/android/gms/internal/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahp;->zzc(Lcom/google/android/gms/internal/zzahp;)V

    goto :goto_0
.end method
