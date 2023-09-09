<Grid>
    <StackPanel>
        <TextBlock Text="Hello Uno Platform" Margin="20" FontSize="30" />
    </StackPanel>
</Grid>

<Grid>
    <StackPanel>
        <TextBlock Text="Hello World" Margin="20" FontSize="30" />
        <Slider x:Name="slider"/>
    </StackPanel>
</Grid>

<Grid>
    <StackPanel>
        <TextBlock Text="{Binding Value, ElementName=slider}" Margin="20" FontSize="30" />
        <Slider x:Name="slider"/>
    </StackPanel>
</Grid>
